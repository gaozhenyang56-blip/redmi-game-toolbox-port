.class Lcom/miui/antivirus/activity/MainActivity$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$t;->b:Lcom/miui/antivirus/activity/MainActivity;

    iput-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$t;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$t;->a:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method
