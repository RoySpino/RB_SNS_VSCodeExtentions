'use strict'
Object.defineProperty(exports, "__esModule", { value: true });
var vscode = require("vscode");
var completionItemProvider_1 = require("./features/completionItemProvider");
var hoverProvider_1 = require("./features/hoverProvider");
var signatureHelpProvider_1 = require("./features/signatureHelpProvider");
var validationProvider_1 = require("./features/validationProvider");
function activate(context) {
    var validator = new validationProvider_1.default(context.workspaceState);
    validator.activate(context.subscriptions);
    // add providers
    context.subscriptions.push(vscode.languages.registerCompletionItemProvider('rpg', new completionItemProvider_1.default(), '>', '$'));
    context.subscriptions.push(vscode.languages.registerHoverProvider('rpg', new hoverProvider_1.default()));
    context.subscriptions.push(vscode.languages.registerSignatureHelpProvider('rpg', new signatureHelpProvider_1.default(), '(', ','));
    // need to set in the extension host as well as the completion provider uses it.
    vscode.languages.setLanguageConfiguration('rpg', {
        wordPattern: /(-?\d*\.\d\w*)|([^\-\`\~\!\@\#\%\^\&\*\(\)\=\+\[\{\]\}\\\|\;\:\'\"\,\.\<\>\/\?\s]+)/g,
        onEnterRules: [
            {
                // e.g. /** | */
                beforeText: /^\s*\/\*\*(?!\/)([^\*]|\*(?!\/))*$/,
                afterText: /^\s*\*\/$/,
                action: { indentAction: vscode.IndentAction.IndentOutdent, appendText: ' * ' }
            },
            {
                // e.g. /** ...|
                beforeText: /^\s*\/\*\*(?!\/)([^\*]|\*(?!\/))*$/,
                action: { indentAction: vscode.IndentAction.None, appendText: ' * ' }
            },
            {
                // e.g.  * ...|
                beforeText: /^(\t|(\ \ ))*\ \*(\ ([^\*]|\*(?!\/))*)?$/,
                action: { indentAction: vscode.IndentAction.None, appendText: '* ' }
            },
            {
                // e.g.  */|
                beforeText: /^(\t|(\ \ ))*\ \*\/\s*$/,
                action: { indentAction: vscode.IndentAction.None, removeText: 1 }
            },
            {
                // e.g.  *-----*/|
                beforeText: /^(\t|(\ \ ))*\ \*[^/]*\*\/\s*$/,
                action: { indentAction: vscode.IndentAction.None, removeText: 1 }
            }
        ]
    });
}
exports.activate = activate;

//# sourceMappingURL=https://ticino.blob.core.windows.net/sourcemaps/79b44aa704ce542d8ca4a3cc44cfca566e7720f1/extensions\php\out/phpMain.js.map
