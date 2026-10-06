.class public final enum Lym/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lym/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lym/v;

.field public static final enum c:Lym/v;

.field public static final enum d:Lym/v;

.field public static final enum e:Lym/v;

.field public static final enum f:Lym/v;

.field public static final enum g:Lym/v;

.field private static final synthetic h:[Lym/v;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lym/v;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Lym/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lym/v;->b:Lym/v;

    new-instance v1, Lym/v;

    const-string v3, "HTTP_1_1"

    const/4 v4, 0x1

    const-string v5, "http/1.1"

    invoke-direct {v1, v3, v4, v5}, Lym/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lym/v;->c:Lym/v;

    new-instance v3, Lym/v;

    const-string v5, "SPDY_3"

    const/4 v6, 0x2

    const-string v7, "spdy/3.1"

    invoke-direct {v3, v5, v6, v7}, Lym/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lym/v;->d:Lym/v;

    new-instance v5, Lym/v;

    const-string v7, "HTTP_2"

    const/4 v8, 0x3

    const-string v9, "h2"

    invoke-direct {v5, v7, v8, v9}, Lym/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lym/v;->e:Lym/v;

    new-instance v7, Lym/v;

    const-string v9, "H2_PRIOR_KNOWLEDGE"

    const/4 v10, 0x4

    const-string v11, "h2_prior_knowledge"

    invoke-direct {v7, v9, v10, v11}, Lym/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lym/v;->f:Lym/v;

    new-instance v9, Lym/v;

    const-string v11, "QUIC"

    const/4 v12, 0x5

    const-string v13, "quic"

    invoke-direct {v9, v11, v12, v13}, Lym/v;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lym/v;->g:Lym/v;

    const/4 v11, 0x6

    new-array v11, v11, [Lym/v;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lym/v;->h:[Lym/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lym/v;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lym/v;
    .locals 3

    sget-object v0, Lym/v;->b:Lym/v;

    iget-object v1, v0, Lym/v;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lym/v;->c:Lym/v;

    iget-object v1, v0, Lym/v;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lym/v;->f:Lym/v;

    iget-object v1, v0, Lym/v;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lym/v;->e:Lym/v;

    iget-object v1, v0, Lym/v;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lym/v;->d:Lym/v;

    iget-object v1, v0, Lym/v;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lym/v;->g:Lym/v;

    iget-object v1, v0, Lym/v;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lym/v;
    .locals 1

    const-class v0, Lym/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lym/v;

    return-object p0
.end method

.method public static values()[Lym/v;
    .locals 1

    sget-object v0, Lym/v;->h:[Lym/v;

    invoke-virtual {v0}, [Lym/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lym/v;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lym/v;->a:Ljava/lang/String;

    return-object v0
.end method
