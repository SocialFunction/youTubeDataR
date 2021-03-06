% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/you_oauth.R
\name{youOAuth}
\alias{youOAuth}
\title{youOAuth}
\usage{
youOAuth(client.id, client.secret, scope = NULL)
}
\arguments{
\item{client.id}{Your \code{client.id}. See details below.}

\item{client.secret}{Your \code{client.secret}. See details below.}

\item{scope}{Scope of token, defaults to \code{NULL}. See details below.}
}
\value{
Returns object of class \code{token2.0} from the \code{httr} package.
}
\description{
OAuth 2.0 authentication
}
\details{
To get your client.id and client.secret please follow the instructions 
\href{https://developers.google.com/youtube/registering_an_application}{here}
 , you may also want to watch the 
 \href{https://www.youtube.com/watch?v=Im69kzhpR3I}{video}
Also set the redirect Authorized redirect URIs to your localhost.

Scopes:
\itemize{
\item \code{force-ssl} Manage your YouTube account. This scope requires 
communication with the API server to happen over an SSL connection.
\item \code{NULL} Manage your YouTube account. This scope is functionally 
identical to the youtube.force-ssl scope listed above because the YouTube 
API server is only available via an HTTPS endpoint. As a result, even 
though this scope does not require an SSL connection, there is actually no 
other way to make an API request.
\item \code{readonly} View your YouTube account.
\item \code{upload} Upload YouTube videos and manage your YouTube videos.
\item \code{partner-channel-audit} Retrieve the 
\href{https://developers.google.com/youtube/v3/docs/channels#auditDetails}{auditDetails} part in a channel 
resource.
}

See all scopes from documentation 
\href{https://developers.google.com/youtube/v3/guides/auth/installed-apps}{here}
}
\examples{
\dontrun{
token <- youOauth(client.id = "something.apps.googleusercontent.com",
                  client.secret = "XxxXX1XxXxXxxx1xxx1xxXXX")
}

}
\author{
John Coene \email{jcoenep@hotmail.com}
}

