
import Connector

public class BannerService {
    
    private let connector: Connector<BannerRouter>
    
    public init(credential: Credential) {
        connector = Connector<BannerRouter>(credential: credential)
    }
    
    public func getFeaturedBanner() {
        connector.get(router: .getFeaturedBanner, model: Banner.self) { (response) in
            if let banner = response.object {
                print(banner.url)
            } else if let error = response.error {
                print(error.message)
            } else {
                print("Fora do fluxo")
            }
        }
    }
    
}
