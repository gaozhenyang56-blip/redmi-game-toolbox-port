.class Lcom/miui/securityscan/ui/main/MainContentFrame$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/ui/main/MainContentFrame;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/ui/main/MainContentFrame;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/ui/main/MainContentFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrame$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrame$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrame;

    const v0, 0x7f0b0987

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/MainContentFrame;->w(Lcom/miui/securityscan/ui/main/MainContentFrame;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrame$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrame;

    const v0, 0x7f0b097f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/MainContentFrame;->y(Lcom/miui/securityscan/ui/main/MainContentFrame;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrame$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrame;

    const v0, 0x7f0b0986

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/ScoreTextView;

    invoke-static {p1, v0}, Lcom/miui/securityscan/ui/main/MainContentFrame;->z(Lcom/miui/securityscan/ui/main/MainContentFrame;Lcom/miui/common/customview/ScoreTextView;)Lcom/miui/common/customview/ScoreTextView;

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrame$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrame;

    const v0, 0x7f0b0afd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/miui/securityscan/ui/main/MainContentFrame;->B(Lcom/miui/securityscan/ui/main/MainContentFrame;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/MainContentFrame$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrame;

    invoke-static {p1}, Lcom/miui/securityscan/ui/main/MainContentFrame;->A(Lcom/miui/securityscan/ui/main/MainContentFrame;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/securityscan/ui/main/MainContentFrame$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrame;

    invoke-static {p2}, Lcom/miui/securityscan/ui/main/MainContentFrame;->C(Lcom/miui/securityscan/ui/main/MainContentFrame;)I

    move-result p2

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainContentFrame$c;->a:Lcom/miui/securityscan/ui/main/MainContentFrame;

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/MainContentFrame;->C(Lcom/miui/securityscan/ui/main/MainContentFrame;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method
