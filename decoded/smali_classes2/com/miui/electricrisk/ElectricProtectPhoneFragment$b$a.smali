.class Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/electricrisk/ElectricProtectPhoneFragment;

.field final synthetic b:Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b;


# direct methods
.method constructor <init>(Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b;Lcom/miui/electricrisk/ElectricProtectPhoneFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b$a;->b:Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b;

    iput-object p2, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b$a;->a:Lcom/miui/electricrisk/ElectricProtectPhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    :try_start_0
    const-string p1, "#Intent;component=com.miui.yellowpage/com.miui.yellowpage.activity.SettingActivity;end"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/electricrisk/ElectricProtectPhoneFragment$b$a;->a:Lcom/miui/electricrisk/ElectricProtectPhoneFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startActivity exception :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ElectricProtectPhoneFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
