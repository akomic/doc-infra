function handler(event) {
    var request = event.request;
    var uri = request.uri;
    
    if (uri.endsWith('/')) {
        if (uri.length > 1) {
            var reuri = uri.replace(/\/$/, '')

            var response = {
                statusCode: 301,
                statusDescription: 'Found',
                headers:
                    { "location": { "value": reuri } }
                }

            return response;
        }
    } 
    else if (!uri.includes('.')) {
        request.uri += '/index.html';
    }

    return request;
}
