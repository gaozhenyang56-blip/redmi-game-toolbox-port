.class public final synthetic Lmiuix/miuixbasewidget/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/miuixbasewidget/widget/FilterSortView;

.field public final synthetic b:Landroidx/constraintlayout/widget/ConstraintLayout$b;


# direct methods
.method public synthetic constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView;Landroidx/constraintlayout/widget/ConstraintLayout$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/a;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/a;->b:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/a;->a:Lmiuix/miuixbasewidget/widget/FilterSortView;

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/a;->b:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-static {v0, v1}, Lmiuix/miuixbasewidget/widget/FilterSortView;->f(Lmiuix/miuixbasewidget/widget/FilterSortView;Landroidx/constraintlayout/widget/ConstraintLayout$b;)V

    return-void
.end method
