.class Lcom/singular/sdk/internal/BroadcastReceivers;
.super Ljava/lang/Object;
.source "BroadcastReceivers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/singular/sdk/internal/BroadcastReceivers$NetworkChange;
    }
.end annotation


# static fields
.field private static final logger:Lcom/singular/sdk/internal/SingularLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BroadcastReceivers"

    .line 26
    invoke-static {v0}, Lcom/singular/sdk/internal/SingularLog;->getLogger(Ljava/lang/String;)Lcom/singular/sdk/internal/SingularLog;

    move-result-object v0

    sput-object v0, Lcom/singular/sdk/internal/BroadcastReceivers;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/singular/sdk/internal/SingularLog;
    .locals 1

    .line 24
    sget-object v0, Lcom/singular/sdk/internal/BroadcastReceivers;->logger:Lcom/singular/sdk/internal/SingularLog;

    return-object v0
.end method
