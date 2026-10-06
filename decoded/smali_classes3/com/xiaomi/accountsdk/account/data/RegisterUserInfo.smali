.class public Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;,
        Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_AVATAR_ADDRESS:Ljava/lang/String; = "avatar_address"

.field private static final KEY_BIND_TIME:Ljava/lang/String; = "bind_time"

.field private static final KEY_HAS_PASSWORD:Ljava/lang/String; = "has_pwd"

.field private static final KEY_MASKED_USER_ID:Ljava/lang/String; = "masked_user_id"

.field private static final KEY_NEED_GET_ACTIVE_TIME:Ljava/lang/String; = "need_get_active_time"

.field private static final KEY_NEED_TOAST:Ljava/lang/String; = "need_toast"

.field private static final KEY_PHONE:Ljava/lang/String; = "phone"

.field private static final KEY_REGISTER_PWD:Ljava/lang/String; = "register_pwd"

.field private static final KEY_REGISTER_STATUS:Ljava/lang/String; = "register_status"

.field private static final KEY_TICKET_TOKEN:Ljava/lang/String; = "ticket_token"

.field private static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field private static final KEY_USER_NAME:Ljava/lang/String; = "user_name"

.field public static final STATUS_NOT_REGISTERED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_USED_NOT_RECYCLED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_USED_POSSIBLY_RECYCLED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final avatarAddress:Ljava/lang/String;

.field public final bindTime:J

.field public final hasPwd:Z

.field public final maskedUserId:Ljava/lang/String;

.field public final needGetActiveTime:Z

.field public final needToast:Z

.field public final phone:Ljava/lang/String;

.field public final registerPwd:Z

.field public final status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;

.field public final ticketToken:Ljava/lang/String;

.field public final userId:Ljava/lang/String;

.field public final userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$a;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$a;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;->a(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->avatarAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->ticketToken:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->phone:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->maskedUserId:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->hasPwd:Z

    const-wide/16 p2, -0x1

    iput-wide p2, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->bindTime:J

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needGetActiveTime:Z

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needToast:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->registerPwd:Z

    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->a(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;->a(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->b(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->e(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->f(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->avatarAddress:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->g(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->ticketToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->h(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->phone:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->i(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->maskedUserId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->j(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->hasPwd:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->k(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->bindTime:J

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->l(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needGetActiveTime:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->c(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needToast:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->d(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->registerPwd:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;)V

    return-void
.end method

.method public static copyFrom(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;

    iget v1, v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;->a:I

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;-><init>(I)V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->w(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->x(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->avatarAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->m(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->ticketToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->v(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->t(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->maskedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->q(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->hasPwd:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->p(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->bindTime:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->n(J)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needGetActiveTime:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->r(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    move-result-object v0

    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needToast:Z

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;->s(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvartarAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->avatarAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;

    iget v0, v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;->a:I

    return v0
.end method

.method public getTicketToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->ticketToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->status:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;

    iget v0, v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$c;->a:I

    const-string v1, "register_status"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userId:Ljava/lang/String;

    const-string v1, "user_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->userName:Ljava/lang/String;

    const-string v1, "user_name"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->avatarAddress:Ljava/lang/String;

    const-string v1, "avatar_address"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->ticketToken:Ljava/lang/String;

    const-string v1, "ticket_token"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->phone:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->maskedUserId:Ljava/lang/String;

    const-string v1, "masked_user_id"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->hasPwd:Z

    const-string v1, "has_pwd"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-wide v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->bindTime:J

    const-string v2, "bind_time"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needToast:Z

    const-string v1, "need_toast"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->needGetActiveTime:Z

    const-string v1, "need_get_active_time"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;->registerPwd:Z

    const-string v1, "register_pwd"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
