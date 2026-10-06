.class Lcom/miui/antivirus/activity/MainActivity$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/MainActivity;->J1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/slidingwidget/widget/SlidingButton;

.field final synthetic b:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Lmiuix/slidingwidget/widget/SlidingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$u;->b:Lcom/miui/antivirus/activity/MainActivity;

    iput-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$u;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Lo2/h;->D(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$u;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-static {p1}, Lo2/h;->V(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$u;->b:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->g0(Lcom/miui/antivirus/activity/MainActivity;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$u;->b:Lcom/miui/antivirus/activity/MainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/antivirus/activity/MainActivity;->i0(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    return-void
.end method
