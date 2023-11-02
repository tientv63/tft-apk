.class public final Lio/sentry/Breadcrumb$Deserializer;
.super Ljava/lang/Object;
.source "Breadcrumb.java"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Breadcrumb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/Breadcrumb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/Breadcrumb;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 705
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->beginObject()V

    .line 706
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    .line 709
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    .line 714
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v7

    sget-object v8, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    if-ne v7, v8, :cond_8

    .line 715
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 716
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x0

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "message"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x5

    goto :goto_1

    :sswitch_1
    const-string v9, "level"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x4

    goto :goto_1

    :sswitch_2
    const-string v9, "timestamp"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x3

    goto :goto_1

    :sswitch_3
    const-string v9, "category"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_4
    const-string v9, "type"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_5
    const-string v9, "data"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    move v8, v10

    :goto_1
    packed-switch v8, :pswitch_data_0

    if-nez v6, :cond_7

    .line 749
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 751
    :cond_7
    invoke-virtual {p1, p2, v6, v7}, Lio/sentry/JsonObjectReader;->nextUnknown(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :pswitch_0
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 742
    :pswitch_1
    :try_start_0
    new-instance v7, Lio/sentry/SentryLevel$Deserializer;

    invoke-direct {v7}, Lio/sentry/SentryLevel$Deserializer;-><init>()V

    invoke-virtual {v7, p1, p2}, Lio/sentry/SentryLevel$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/SentryLevel;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 744
    sget-object v8, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v9, v10, [Ljava/lang/Object;

    const-string v10, "Error when deserializing SentryLevel"

    invoke-interface {p2, v8, v7, v10, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 718
    :pswitch_2
    invoke-virtual {p1, p2}, Lio/sentry/JsonObjectReader;->nextDateOrNull(Lio/sentry/ILogger;)Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v0, v7

    goto/16 :goto_0

    .line 738
    :pswitch_3
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 727
    :pswitch_4
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextStringOrNull()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 732
    :pswitch_5
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->nextObjectOrNull()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 731
    invoke-static {v7}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v1, v7

    goto/16 :goto_0

    .line 756
    :cond_8
    new-instance p2, Lio/sentry/Breadcrumb;

    invoke-direct {p2, v0}, Lio/sentry/Breadcrumb;-><init>(Ljava/util/Date;)V

    .line 757
    invoke-static {p2, v2}, Lio/sentry/Breadcrumb;->access$002(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;

    .line 758
    invoke-static {p2, v3}, Lio/sentry/Breadcrumb;->access$102(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    invoke-static {p2, v1}, Lio/sentry/Breadcrumb;->access$202(Lio/sentry/Breadcrumb;Ljava/util/Map;)Ljava/util/Map;

    .line 760
    invoke-static {p2, v4}, Lio/sentry/Breadcrumb;->access$302(Lio/sentry/Breadcrumb;Ljava/lang/String;)Ljava/lang/String;

    .line 761
    invoke-static {p2, v5}, Lio/sentry/Breadcrumb;->access$402(Lio/sentry/Breadcrumb;Lio/sentry/SentryLevel;)Lio/sentry/SentryLevel;

    .line 763
    invoke-virtual {p2, v6}, Lio/sentry/Breadcrumb;->setUnknown(Ljava/util/Map;)V

    .line 764
    invoke-virtual {p1}, Lio/sentry/JsonObjectReader;->endObject()V

    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2eefaa -> :sswitch_5
        0x368f3a -> :sswitch_4
        0x302bcfe -> :sswitch_3
        0x3492916 -> :sswitch_2
        0x6219b84 -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 700
    invoke-virtual {p0, p1, p2}, Lio/sentry/Breadcrumb$Deserializer;->deserialize(Lio/sentry/JsonObjectReader;Lio/sentry/ILogger;)Lio/sentry/Breadcrumb;

    move-result-object p1

    return-object p1
.end method
