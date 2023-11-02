.class public Lio/sentry/vendor/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    .line 156
    sput-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 158
    sget-object v2, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_0
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    .line 161
    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\\t"

    .line 162
    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\\b"

    .line 163
    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\\n"

    .line 164
    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\\r"

    .line 165
    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\\f"

    .line 166
    aput-object v2, v0, v1

    .line 167
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    .line 168
    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    .line 169
    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    .line 170
    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    .line 171
    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    .line 172
    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 178
    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    const/4 v0, 0x6

    .line 181
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->push(I)V

    const-string v0, ":"

    .line 193
    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->serializeNulls:Z

    if-eqz p1, :cond_0

    .line 212
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    return-void

    .line 210
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private beforeName()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 623
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 627
    :goto_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->newline()V

    const/4 v0, 0x4

    .line 628
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->replaceTop(I)V

    return-void

    .line 625
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->peek()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    const/4 v2, 0x7

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    .line 640
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->lenient:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonWriter;->replaceTop(I)V

    goto :goto_1

    .line 660
    :cond_3
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    .line 661
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->replaceTop(I)V

    goto :goto_1

    .line 655
    :cond_4
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 656
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->newline()V

    goto :goto_1

    .line 650
    :cond_5
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonWriter;->replaceTop(I)V

    .line 651
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->newline()V

    :goto_1
    return-void
.end method

.method private close(IIC)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->peek()I

    move-result v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nesting problem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 356
    iget p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    if-ne v0, p2, :cond_2

    .line 358
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->newline()V

    .line 360
    :cond_2
    iget-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(I)V

    return-object p0

    .line 353
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dangling name: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private newline()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 611
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 612
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private open(IC)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 337
    invoke-direct {p0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->push(I)V

    .line 338
    iget-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    return-object p0
.end method

.method private peek()I
    .locals 2

    .line 375
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_0

    .line 378
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    return v0

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private push(I)V
    .locals 3

    .line 365
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 366
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    .line 368
    :cond_0
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    aput p1, v0, v1

    return-void
.end method

.method private replaceTop(I)V
    .locals 2

    .line 385
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->htmlSafe:Z

    if-eqz v0, :cond_0

    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/sentry/vendor/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 575
    :goto_0
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 577
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_6

    .line 579
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-ge v5, v6, :cond_1

    .line 582
    aget-object v5, v0, v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_1
    const/16 v6, 0x2028

    if-ne v5, v6, :cond_2

    const-string v5, "\\u2028"

    goto :goto_2

    :cond_2
    const/16 v6, 0x2029

    if-ne v5, v6, :cond_5

    const-string v5, "\\u2029"

    :cond_3
    :goto_2
    if-ge v4, v3, :cond_4

    .line 594
    iget-object v6, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v7, v3, v4

    invoke-virtual {v6, p1, v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 596
    :cond_4
    iget-object v4, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v4, v3, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-ge v4, v1, :cond_7

    .line 600
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int/2addr v1, v4

    invoke-virtual {v0, p1, v4, v1}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 602
    :cond_7
    iget-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method private writeDeferredName()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 410
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeName()V

    .line 411
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public beginArray()Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x1

    const/16 v1, 0x5b

    .line 299
    invoke-direct {p0, v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->open(IC)Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x3

    const/16 v1, 0x7b

    .line 319
    invoke-direct {p0, v0, v1}, Lio/sentry/vendor/gson/stream/JsonWriter;->open(IC)Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 566
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    .line 567
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stack:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 570
    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    return-void

    .line 568
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x5d

    .line 308
    invoke-direct {p0, v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonWriter;->close(IIC)Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/16 v2, 0x7d

    .line 328
    invoke-direct {p0, v0, v1, v2}, Lio/sentry/vendor/gson/stream/JsonWriter;->close(IIC)Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void

    .line 553
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSerializeNulls()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->serializeNulls:Z

    return v0
.end method

.method public final isHtmlSafe()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->htmlSafe:Z

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->lenient:Z

    return v0
.end method

.method public jsonValue(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 441
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->nullValue()Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 443
    :cond_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 444
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 445
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 398
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 401
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_0

    .line 404
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    return-object p0

    .line 402
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "JsonWriter is closed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 399
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 396
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public nullValue()Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 456
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->serializeNulls:Z

    if-eqz v0, :cond_0

    .line 457
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    return-object p0

    .line 463
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 464
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setHtmlSafe(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->htmlSafe:Z

    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .locals 1

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    const-string p1, ":"

    .line 226
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_0

    .line 228
    :cond_0
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    const-string p1, ": "

    .line 229
    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public final setLenient(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->lenient:Z

    return-void
.end method

.method public final setSerializeNulls(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->serializeNulls:Z

    return-void
.end method

.method public value(D)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 504
    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 508
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public value(J)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 519
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 520
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 487
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->nullValue()Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 489
    :cond_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 490
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 491
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "true"

    goto :goto_0

    :cond_1
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 533
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->nullValue()Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 536
    :cond_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 537
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    iget-boolean v1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->lenient:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 540
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_2
    :goto_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 543
    iget-object p1, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 424
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->nullValue()Lio/sentry/vendor/gson/stream/JsonWriter;

    move-result-object p1

    return-object p1

    .line 426
    :cond_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 427
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 428
    invoke-direct {p0, p1}, Lio/sentry/vendor/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    return-object p0
.end method

.method public value(Z)Lio/sentry/vendor/gson/stream/JsonWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->writeDeferredName()V

    .line 475
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->beforeValue()V

    .line 476
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method
