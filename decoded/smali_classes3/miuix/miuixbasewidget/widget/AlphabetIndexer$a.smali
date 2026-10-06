.class Lmiuix/miuixbasewidget/widget/AlphabetIndexer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$a;->a:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p9, p7

    sub-int/2addr p5, p3

    if-ne p9, p5, :cond_0

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$a;->a:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->a(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$a;->a:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->b(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;Z)Z

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$a;->a:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p1, p5}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->c(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    :cond_1
    return-void
.end method
