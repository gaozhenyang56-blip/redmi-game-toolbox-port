.class public final synthetic Lmiuix/internal/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lmiuix/internal/widget/l;


# direct methods
.method public synthetic constructor <init>(Lmiuix/internal/widget/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/i;->a:Lmiuix/internal/widget/l;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lmiuix/internal/widget/i;->a:Lmiuix/internal/widget/l;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lmiuix/internal/widget/l;->e(Lmiuix/internal/widget/l;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
