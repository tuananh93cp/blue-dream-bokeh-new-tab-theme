// Popup JavaScript for Blue Dream Bokeh New Tab Theme
document.addEventListener('DOMContentLoaded', function() {
    const previewBtn = document.getElementById('previewBtn');
    
    if (previewBtn) {
        previewBtn.addEventListener('click', function(e) {
            e.preventDefault();
            chrome.tabs.create({url: 'chrome://newtab/'});
        });
    }
}); 