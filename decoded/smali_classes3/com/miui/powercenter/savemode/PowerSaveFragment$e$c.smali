.class Lcom/miui/powercenter/savemode/PowerSaveFragment$e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/savemode/PowerSaveFragment$e;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

.field final synthetic b:Lcom/miui/powercenter/savemode/PowerSaveFragment$e;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/savemode/PowerSaveFragment$e;Lcom/miui/powercenter/savemode/PowerSaveFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$c;->b:Lcom/miui/powercenter/savemode/PowerSaveFragment$e;

    iput-object p2, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$c;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$e$c;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    invoke-static {p1}, Lcom/miui/powercenter/savemode/PowerSaveFragment;->c0(Lcom/miui/powercenter/savemode/PowerSaveFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
