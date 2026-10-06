.class Lcom/miui/powercenter/nightcharge/widget/BatteryProtectPreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/nightcharge/widget/BatteryProtectPreference;->onBindViewHolder(Landroidx/preference/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/nightcharge/widget/BatteryProtectPreference;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/nightcharge/widget/BatteryProtectPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/nightcharge/widget/BatteryProtectPreference$a;->a:Lcom/miui/powercenter/nightcharge/widget/BatteryProtectPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget v0, Lmiuix/view/i;->g:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    iget-object p1, p0, Lcom/miui/powercenter/nightcharge/widget/BatteryProtectPreference$a;->a:Lcom/miui/powercenter/nightcharge/widget/BatteryProtectPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/nightcharge/widget/BatteryProtectPreference$a;->a:Lcom/miui/powercenter/nightcharge/widget/BatteryProtectPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/powercenter/nightcharge/IntellectProtectSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
