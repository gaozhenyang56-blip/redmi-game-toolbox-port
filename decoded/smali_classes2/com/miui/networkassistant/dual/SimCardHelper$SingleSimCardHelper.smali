.class public Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;
.super Lcom/miui/networkassistant/dual/SimCardHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/dual/SimCardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSimCardHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/dual/SimCardHelper;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/dual/SimCardHelper$1;)V

    return-void
.end method


# virtual methods
.method public isSimCardReady(I)Z
    .locals 4

    const-string p1, "miui.telephony.TelephonyManager"

    invoke-static {p1}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getDefault"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getSimState"

    invoke-virtual {p1, v2, v3, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lbh/d$a;->i()I

    move-result p1

    const/4 v1, 0x5

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public updateSimState()Z
    .locals 4

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    const-string v0, "default1"

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimInserted(Z)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isImsiMissed()Z

    move-result v0

    xor-int/2addr v0, v3

    return v0
.end method
