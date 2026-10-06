.class public Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public h()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->e:Z

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$a;)V

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public j(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$b;->g:Ljava/lang/String;

    return-object p0
.end method
