.class Lcom/xiaomi/security/devicecredential/c$b;
.super Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/security/devicecredential/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private l:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/security/devicecredential/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/c$b;-><init>()V

    return-void
.end method

.method private q5()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->v8()V

    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->v1()V

    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/c$b;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w8(Lcom/xiaomi/security/devicecredential/c$b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/c$b;->q5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public p8()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wrong callback!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s8(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/security/devicecredential/c$b;->l:Ljava/lang/String;

    return-void
.end method

.method public u8([B)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "wrong callback!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
