.class public Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static e0(Z)V
    .locals 1

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v0, "persist.security.uks_opened"

    invoke-static {v0, p0}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->set(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected d0()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->e0(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/UnknownSourceVerifyActivity;->d0()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
