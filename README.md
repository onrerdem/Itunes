Bimser Mobil Ekip Case Study
Requirements:
Your application must contain 2 screen. One of them is search screen and other one is detail screen. Main goal of the app is searching terms from api, showing them in a list and can navigate to detail of item. There are some important points that you should consider them.
• There must be search box at the top of the screen and it should search text if input has more than 2 characters. Example:
• There must be horizontal filter options under the search box and it must be single selection. It contains `Movies`, `Music`, `Ebook`, `Podcast` and you have to combine this `wrapperType` filter with search term while using search api. You can use radio buttons, normal buttons, segmented control etc. Example:
• You should fetch results with pagination. Item count in each page can be 20.
• Results have to be shown in a grid layout. (2 item in a row)
• Each item in results must contain `artworkUrl100`, `collectionPrice`, `collectionName`
and human readable format of `releaseDate`.
• If user tap any item, application must navigate to detail of item. You can show some
informations about item. Also user can go back from that detail page. Please write the code you would consider production-ready.
• There is no restrictions about UI Design, its up to you.
• Assume that, after this initial work, one more developer will start working on this app
with you and the application will continue growing.
• Prioritizing usages of any [app feature, library, tool, technique, testing, architecture,
best-practice] may be as important as using them, for the sake of time limit. Taking notes about your decisions/reasons and logging your process may be helpful as we plan to have a chat with you about your final work.
• API Details:
You should use iTunes Search API. https://developer.apple.com/library/archive/documentation/AudioVideo/Conceptual/iT uneSearchAPI/index.html#//apple_ref/doc/uid/TP40017632
• API has query parameters which can help you for pagination or filtering.