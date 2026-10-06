.class Lcom/miui/powercenter/savemode/PowerSaveFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


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

    iput-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$b;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 0

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    invoke-static {}, Lgd/c;->H0()I

    move-result p1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$b;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f121531

    invoke-static {p1, p2}, Lx4/y1;->j(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$b;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    invoke-static {p1, p2}, Lcom/miui/powercenter/savemode/PowerSaveFragment;->e0(Lcom/miui/powercenter/savemode/PowerSaveFragment;I)V

    invoke-static {p2}, Lgd/c;->E2(I)V

    iget-object p1, p0, Lcom/miui/powercenter/savemode/PowerSaveFragment$b;->a:Lcom/miui/powercenter/savemode/PowerSaveFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lie/a;->f(Landroid/content/Context;)V

    return-void
.end method
