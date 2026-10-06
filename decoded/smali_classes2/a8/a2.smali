.class public La8/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a8.a2"

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I

.field public static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, La8/a2;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, La8/a2;->c:I

    const/4 v0, 0x1

    sput-boolean v0, La8/a2;->d:Z

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 6

    sget v0, La8/a2;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, La8/a2;->c:I

    invoke-static {}, La8/a2;->c()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-static {}, La8/a2;->b()J

    move-result-wide v1

    long-to-float v1, v1

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, La8/a2;->c()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-static {}, La8/a2;->b()J

    move-result-wide v3

    long-to-float v3, v3

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    cmpg-float v4, v2, v0

    if-lez v4, :cond_0

    sub-float v4, v3, v1

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_1

    :cond_0
    sget v4, La8/a2;->c:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_1

    invoke-static {}, La8/a2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sub-float/2addr v3, v1

    sub-float v1, v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    cmpl-float v1, v0, v3

    if-ltz v1, :cond_3

    const/high16 v0, 0x42c60000    # 99.0f

    :cond_3
    const/4 v1, 0x0

    sput v1, La8/a2;->c:I

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()J
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/stat"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v1, v0

    :goto_0
    :try_start_2
    sget-object v3, La8/a2;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v1}, Lbl/e;->d(Ljava/io/Reader;)V

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v1}, Lbl/e;->d(Ljava/io/Reader;)V

    throw v0
.end method

.method public static c()J
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/proc/stat"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v1, v0

    :goto_0
    :try_start_2
    sget-object v3, La8/a2;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v1}, Lbl/e;->d(Ljava/io/Reader;)V

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 v3, 0x6

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/4 v3, 0x7

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    const/16 v3, 0x8

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v1}, Lbl/e;->d(Ljava/io/Reader;)V

    throw v0
.end method
