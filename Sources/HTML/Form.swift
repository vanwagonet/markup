import Markup

/// `<form>`: The Form element
///
/// The `<form>` HTML element represents a document section containing interactive controls for submitting information.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form)
public typealias Form<Content: HTMLContent> = Element<Tags.form, Content>
extension Tags { public enum form: HTMLTagName { public static let name = "form" } }

public extension Attribute<Tags.form> {
    /// Space-separated character encodings the server accepts. The browser uses them in the order in which they are listed.
    /// The default value means the same encoding as the page. (In previous versions of HTML, character encodings could also be delimited by commas.)
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#accept-charset)
    @inlinable static func acceptCharset(_ charsets: CharacterEncoding...) -> Self {
        acceptCharset(charsets)
    }

    /// Space-separated character encodings the server accepts. The browser uses them in the order in which they are listed.
    /// The default value means the same encoding as the page. (In previous versions of HTML, character encodings could also be delimited by commas.)
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#accept-charset)
    @inlinable static func acceptCharset(_ charsets: [CharacterEncoding]) -> Self {
        Self("accept-charset", value: Text(charsets.map(\.rawValue).joined(separator: " ")))
    }

    /// The URL that processes the form submission.
    ///
    /// - Parameters:
    ///   - url: The URL string for the form action.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#action)
    @inlinable static func action(_ url: any StringProtocol) -> Self {
        Self("action", value: Text(verbatim: url))
    }

    /// Indicates whether input elements can by default have their values automatically completed by the browser.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#autocomplete)
    @inlinable static func autoComplete(_ value: Autocomplete) -> Self {
        Self("autocomplete", value: Text(verbatim: value.rawValue))
    }

    /// If the value of the method attribute is `.post`, `encType` is the MIME type of the form submission.
    ///
    /// - Parameters:
    ///   - type: The mime type for the form body.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#enctype)
    @inlinable static func encType(_ type: FormEncType) -> Self {
        Self("enctype", value: Text(verbatim: type.rawValue))
    }

    /// Specifies the HTTP method used to submit the form.
    ///
    /// - Parameters:
    ///   - method: The HTTP method for the form action.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#method)
    @inlinable static func method(_ method: FormMethod) -> Self {
        Self("method", value: Text(verbatim: method.rawValue))
    }

    /// The name of the form. The value must not be the empty string, and must be unique among the form elements in the forms collection that it is in, if any.
    ///
    /// - Parameters:
    ///   - name: The name of the form.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#name)
    @inlinable static func name(_ name: any StringProtocol) -> Self {
        Self("name", value: Text(verbatim: name))
    }

    /// This Boolean attribute indicates that the form shouldn't be validated when submitted.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#novalidate)
    @inlinable static var noValidate: Self {
        Self("novalidate", value: nil)
    }

    /// Controls the annotations and what kinds of links the form creates.
    ///
    /// - Parameters:
    ///   - types: The link relationship types.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel)
    @inlinable static func rel(_ types: FormRelationshipType...) -> Self {
        rel(types)
    }

    /// Controls the annotations and what kinds of links the form creates.
    ///
    /// - Parameters:
    ///   - types: The link relationship types.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel)
    @inlinable static func rel<S>(_ types: S) -> Self where S: Sequence, S.Element == FormRelationshipType {
        Self("rel", value: Text(verbatim: types.map(\.rawValue).joined(separator: " ")))
    }

    /// Where to display the response from submitting the form, as a keyword for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A keyword target context to display the response.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#target)
    @inlinable static func target(_ target: Target) -> Self {
        self.target(target.rawValue)
    }

    /// Where to display the response from submitting the form, as the name for a browsing context.
    ///
    /// - Parameters:
    ///   - target: A tab, window, or `iframe` name.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#target)
    @inlinable static func target(_ target: any StringProtocol) -> Self {
        Self("target", value: Text(verbatim: target))
    }
}


/// If the value of the method attribute of a form is post, enctype is the MIME type of the form submission.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#enctype)
public enum FormEncType: String {
    /// The default value.
    case formURLEncoded = "application/x-www-form-urlencoded"
    /// Use this if the form contains `<input>` elements with `type=file`.
    case multipartFormData = "multipart/form-data"
    /// Useful for debugging purposes.
    case textPlain = "text/plain"
}

/// The HTTP method to submit the form with.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form#method)
public enum FormMethod: String {
    /// When the form is inside a `<dialog>`, closes the dialog and causes a submit event to be fired on submission.
    case dialog
    /// The GET method; form data appended to the action URL with a ? separator. Use this method when the form has no side effects.
    case get
    /// The POST method; form data sent as the request body.
    case post
}

/// The HTML autocomplete attribute lets web developers specify what if any permission the user agent has to provide automated assistance in filling out form field values,
/// as well as guidance to the browser as to the type of information expected in the field.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/autocomplete#browser_compatibility)
public enum Autocomplete: String {
    /// The browser is not permitted to automatically enter or select a value for this field.
    case off
    /// The browser is allowed to automatically complete the input.
    case on
    /// The field expects the value to be a person's full name.
    case name
    /// The prefix or title, such as "Mrs.", "Mr.", "Miss", "Ms.", "Dr.", or "Mlle.".
    case honorificPrefix = "honorific-prefix"
    /// The given (or "first") name.
    case givenName = "given-name"
    /// The middle name.
    case additionalName = "additional-name"
    /// The family (or "last") name.
    case familyName = "family-name"
    /// The suffix, such as "Jr.", "B.Sc.", "PhD.", "MBASW", or "IV".
    case honorificSuffix = "honorific-suffix"
    /// A nickname or handle.
    case nickname
    /// An email address.
    case email
    /// A username or account name.
    case username
    /// A new password.
    case newPassword = "new-password"
    /// The user's current password.
    case currentPassword = "current-password"
    /// A one-time code used for verifying user identity.
    case oneTimeCode = "one-time-code"
    /// A job title, or the title a person has within an organization.
    case organizationTitle = "organization-title"
    /// A company or organization name.
    case organization
    /// A street address.
    case streetAddress = "street-address"
    /// Each individual line of the street address. These should only be present if the "street-address" is not present.
    case addressLine1 = "address-line1", addressLine2 = "address-line2", addressLine3 = "address-line3"
    /// The first administrative level in the address. This is typically the province in which the address is located.
    case addressLevel1 = "address-level1"
    /// The second administrative level, typically the city, town, village, or other locality in which the address is located.
    case addressLevel2 = "address-level2"
    /// The third administrative level, in addresses with at least three administrative levels.
    case addressLevel3 = "address-level3"
    /// The finest-grained administrative level, in addresses which have four levels.
    case addressLevel4 = "address-level4"
    /// A country or territory code.
    case country
    /// A country or territory name.
    case countryName = "country-name"
    /// A postal code (in the United States, this is the ZIP code).
    case postalCode = "postal-code"
    /// The full name as printed on or associated with a payment instrument such as a credit card.
    case ccName = "cc-name"
    /// A given (first) name as given on a payment instrument like a credit card.
    case ccGivenName = "cc-given-name"
    /// A middle name as given on a payment instrument or credit card.
    case ccAdditionalName = "cc-additional-name"
    /// A family name, as given on a credit card.
    case ccFamilyName = "cc-family-name"
    /// A credit card number or other number identifying a payment method, such as an account number.
    case ccNumber = "cc-number"
    /// A payment method expiration date, typically in the form "MM/YY" or "MM/YYYY".
    case ccExp = "cc-exp"
    /// The month in which the payment method expires.
    case ccExpMonth = "cc-exp-month"
    /// The year in which the payment method expires.
    case ccExpYear = "cc-exp-year"
    /// The security code for the payment instrument; on credit cards, this is the 3-digit verification number on the back of the card.
    case ccCsc = "cc-csc"
    /// The type of payment instrument (such as "Visa" or "Master Card").
    case ccType = "cc-type"
    /// The currency in which the transaction is to take place.
    case transactionCurrency = "transaction-currency"
    /// The amount, given in the currency specified by "transaction-currency", of the transaction, for a payment form.
    case transactionAmount = "transaction-amount"
    /// A preferred language, given as a valid BCP 47 language tag.
    case language
    /// A birth date, as a full date.
    case bDay = "bday"
    /// The day of the month of a birth date.
    case bDayDay = "bday-day"
    /// The month of the year of a birth date.
    case bDayMonth = "bday-month"
    /// The year of a birth date.
    case bDayYear = "bday-year"
    /// A gender identity (such as "Female", "Fa'afafine", "Hijra", "Male", "Nonbinary"), as freeform text without newlines.
    case sex
    /// A full telephone number, including the country code.
    case tel
    /// The country code, such as "1" for the United States, Canada, and other areas in North America and parts of the Caribbean.
    case telCountryCode = "tel-country-code"
    /// The entire phone number without the country code component, including a country-internal prefix.
    case telNational = "tel-national"
    /// The area code, with any country-internal prefix applied if appropriate.
    case telAreaCode = "tel-area-code"
    /// The phone number without the country or area code.
    case telLocal = "tel-local", telLocalPrefix = "tel-local-prefix", telLocalSuffix = "tel-local-suffix"
    /// A telephone extension code within the phone number, such as a room or suite number in a hotel or an office extension in a company.
    case telExtension = "tel-extension"
    /// A URL for an instant messaging protocol endpoint, such as `"xmpp:username@example.net"`.
    case impp
    /// A URL, such as a home page or company website address as appropriate given the context of the other fields in the form.
    case url
    /// The URL of an image representing the person, company, or contact information given in the other fields in the form.
    case photo
    /// Passkeys generated by the Web Authentication API, as requested by a conditional `navigator.credentials.get()` call.
    case webAuthn = "webauthn"
}

/// An encoding defines a mapping between bytes and text.
///
/// [WHATWG Documentation](https://html.spec.whatwg.org/multipage/parsing.html#character-encodings)
public enum CharacterEncoding: String {
    case big5 = "big5"
    case eucKR = "euc-kr"
    case gbk = "gbk"
    case iso2022JP = "iso-2022-jp"
    case iso8859_2 = "iso-8859-2"
    case iso8859_7 = "iso-8859-7"
    case iso8859_8 = "iso-8859-8"
    case shiftJIS = "shift_jis"
    case utf16BE = "utf-16be"
    case utf16BE_LE = "utf-16be/le"
    case utf16LE = "utf-16le"
    case utf8 = "utf-8"
    case windows1250 = "windows-1250"
    case windows1251 = "windows-1251"
    case windows1252 = "windows-1252"
    case windows1254 = "windows-1254"
    case windows1255 = "windows-1255"
    case windows1256 = "windows-1256"
    case windows1257 = "windows-1257"
    case windows1258 = "windows-1258"
    case windows874 = "windows-874"
    case xUserDefined = "x-user-defined"
}

/// The `rel` attribute defines the relationship between a linked resource and the current document.
///
/// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel)
public enum FormRelationshipType: String {
    /// The referenced document is not part of the same site as the current document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#external)
    case external

    /// Link to context-sensitive help.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#help)
    case help

    /// Indicates that the main content of the current document is covered by the copyright license.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#license)
    case license

    /// Indicates that the current document is a part of a series and that the next document in the series is the referenced document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#next)
    case next

    /// Indicates that the current document's original author or publisher does not endorse the referenced document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#nofollow)
    case noFollow = "nofollow"

    /// Creates a top-level browsing context that is not an auxiliary browsing context if the hyperlink would create either of those,
    /// to begin with (i.e., has an appropriate `target` attribute value).
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#noopener)
    case noOpener = "noopener"

    /// No Referer header will be included. Additionally, has the same effect as `.noOpener`.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#noreferrer)
    case noReferrer = "noreferrer"

    /// Creates an auxiliary browsing context if the hyperlink would otherwise create a top-level browsing context that is not an auxiliary browsing
    /// context (i.e., has `"_blank"` as `target` attribute value).
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#opener)
    case opener

    /// Indicates that the current document is a part of a series and that the previous document in the series is the referenced document.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#prev)
    case prev

    /// Gives a link to a resource that can be used to search through the current document and its related pages.
    ///
    /// [MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel#search)
    case search
}
