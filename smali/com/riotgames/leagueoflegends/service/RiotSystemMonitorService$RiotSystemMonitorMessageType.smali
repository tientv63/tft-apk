.class Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService$RiotSystemMonitorMessageType;
.super Ljava/lang/Object;
.source "RiotSystemMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/riotgames/leagueoflegends/service/RiotSystemMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RiotSystemMonitorMessageType"
.end annotation


# static fields
.field public static final BATTERY_CHANGED:I = 0x3

.field public static final DEBUG_MEMORY_SNAPSHOT_REQUESTED:I = 0x1

.field public static final NETWORK_CHANGED:I = 0x2

.field public static final SIMPLE_MEMORY_SNAPSHOT_REQUESTED:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
