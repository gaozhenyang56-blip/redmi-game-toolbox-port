.class public Lcom/miui/optimizecenter/storage/model/AppPublicStorageInfo;
.super Lwa/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final ACTION_DETAIL:Ljava/lang/String; = "miui.intent.action.STORAGE_PUBLIC_FILE_LIST"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lwa/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lra/d$a;

    iget-object v1, v0, Lra/d$a;->a:Landroid/widget/ImageView;

    const v2, 0x7f0805c6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, v0, Lra/d$a;->b:Landroid/widget/TextView;

    const v2, 0x7f121847

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lra/d$a;->c:Landroid/widget/TextView;

    const v1, 0x7f121846

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lwa/a;->totalSize:J

    invoke-static {p1, v4, v5}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
