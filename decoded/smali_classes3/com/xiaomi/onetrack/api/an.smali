.class public Lcom/xiaomi/onetrack/api/an;
.super Lcom/xiaomi/onetrack/api/c;
.source "SourceFile"


# static fields
.field public static volatile k:Z = true

.field private static final l:Ljava/lang/String; = "OneTrackImp"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/c;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/onetrack/util/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/c;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/api/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->a()Lcom/xiaomi/onetrack/util/p;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/Boolean;)V

    new-instance p1, Lcom/xiaomi/onetrack/api/aq;

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/c;->i:Lcom/xiaomi/onetrack/util/w;

    invoke-direct {p1, v0, v1}, Lcom/xiaomi/onetrack/api/aq;-><init>(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;)V

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/c;->a:Lcom/xiaomi/onetrack/api/ak;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->a()Lcom/xiaomi/onetrack/util/p;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/Boolean;)V

    new-instance v0, Lcom/xiaomi/onetrack/api/ao;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/c;->i:Lcom/xiaomi/onetrack/util/w;

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaomi/onetrack/api/ao;-><init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/util/w;)V

    iput-object v0, p0, Lcom/xiaomi/onetrack/api/c;->a:Lcom/xiaomi/onetrack/api/ak;

    :goto_0
    invoke-static {}, Lcom/xiaomi/onetrack/api/ad;->a()Lcom/xiaomi/onetrack/api/ad;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/c;->a:Lcom/xiaomi/onetrack/api/ak;

    invoke-virtual {p1, v0}, Lcom/xiaomi/onetrack/api/ad;->a(Lcom/xiaomi/onetrack/api/ak;)V

    return-void
.end method
