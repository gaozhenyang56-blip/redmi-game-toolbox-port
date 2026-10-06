.class Lcom/miui/powercenter/savemode/PowerSaveFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/savemode/PowerSaveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/savemode/PowerSaveFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/savemode/PowerSaveFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$c;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$c;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    invoke-static {v0}, Lcom/miui/powercenter/savemode/PowerSaveFragment;->a0(Lcom/miui/powercenter/savemode/PowerSaveFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lgd/c;->H0()I

    move-result p1

    new-instance v6, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$c;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$c;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    iget-object v2, v0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->l:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lgd/c;->G0()I

    move-result p1

    new-instance v6, Lmiuix/appcompat/app/TimePickerDialog;

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$c;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$c;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    iget-object v2, v0, Lcom/miui/powercenter/savemode/PowerSaveFragment;->m:Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/app/TimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    :goto_0
    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v6, v0, p1}, Lmiuix/appcompat/app/TimePickerDialog;->updateTime(II)V

    invoke-virtual {v6}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const/4 p1, 0x0

    return p1
.end method
