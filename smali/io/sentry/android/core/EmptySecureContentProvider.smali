.class abstract Lio/sentry/android/core/EmptySecureContentProvider;
.super Landroid/content/ContentProvider;
.source "EmptySecureContentProvider.java"


# instance fields
.field private final securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 21
    new-instance v0, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/EmptySecureContentProvider;->securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 43
    iget-object p1, p0, Lio/sentry/android/core/EmptySecureContentProvider;->securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->checkPrivilegeEscalation(Landroid/content/ContentProvider;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 37
    iget-object p1, p0, Lio/sentry/android/core/EmptySecureContentProvider;->securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->checkPrivilegeEscalation(Landroid/content/ContentProvider;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 31
    iget-object p1, p0, Lio/sentry/android/core/EmptySecureContentProvider;->securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->checkPrivilegeEscalation(Landroid/content/ContentProvider;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 53
    iget-object p1, p0, Lio/sentry/android/core/EmptySecureContentProvider;->securityChecker:Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/ContentProviderSecurityChecker;->checkPrivilegeEscalation(Landroid/content/ContentProvider;)V

    const/4 p1, 0x0

    return p1
.end method
