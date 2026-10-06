.class public Lcom/xiaomi/accountsdk/account/data/AccountInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_HAS_PWD:Ljava/lang/String; = "has_pwd"

.field private static final KEY_USER_SYNCED_URL:Ljava/lang/String; = "user_synced_url"


# instance fields
.field public final autoLoginUrl:Ljava/lang/String;

.field public final encryptedUserId:Ljava/lang/String;

.field public final hasPwd:Z

.field public final passToken:Ljava/lang/String;

.field public final ph:Ljava/lang/String;

.field public final psecurity:Ljava/lang/String;

.field public final rePassToken:Ljava/lang/String;

.field public final security:Ljava/lang/String;

.field public final serviceId:Ljava/lang/String;

.field public final serviceToken:Ljava/lang/String;

.field public final slh:Ljava/lang/String;

.field public final userId:Ljava/lang/String;

.field public final userSyncedUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$a;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$a;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->psecurity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->autoLoginUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->rePassToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->slh:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->ph:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "has_pwd"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasPwd:Z

    if-eqz p1, :cond_1

    const-string v0, "user_synced_url"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userSyncedUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/accountsdk/account/data/AccountInfo$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->a(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->b(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->f(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->g(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->h(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->i(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->j(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->psecurity:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->k(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->autoLoginUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->l(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->rePassToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->m(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->slh:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->c(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->ph:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->d(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasPwd:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->e(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userSyncedUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;Lcom/xiaomi/accountsdk/account/data/AccountInfo$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->z(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->w(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->r(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->t(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->n(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->z(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->w(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->r(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->p(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->x(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->v(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->t(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->z(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->w(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->r(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->p(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->x(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->v(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p7}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->t(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->n(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;)V

    return-void
.end method

.method public static copyFrom(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->z(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->p(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasPwd:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->q(Z)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->r(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->rePassToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->u(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->psecurity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->t(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->w(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->autoLoginUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->n(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->x(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->v(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->slh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->y(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->ph:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->s(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userSyncedUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->A(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$b;->o()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAutoLoginUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->autoLoginUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getHasPwd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasPwd:Z

    return v0
.end method

.method public getPassToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->ph:Ljava/lang/String;

    return-object v0
.end method

.method public getPsecurity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->psecurity:Ljava/lang/String;

    return-object v0
.end method

.method public getRePassToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->rePassToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSlh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->slh:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountInfo{userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", security=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->encryptedUserId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->serviceToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->security:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->psecurity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->autoLoginUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->rePassToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->slh:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->ph:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->hasPwd:Z

    const-string v1, "has_pwd"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->userSyncedUrl:Ljava/lang/String;

    const-string v1, "user_synced_url"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
