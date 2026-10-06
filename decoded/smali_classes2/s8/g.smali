.class public final synthetic Ls8/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Ls8/h;

.field public final synthetic b:Lcom/miui/dock/sidebar/j;


# direct methods
.method public synthetic constructor <init>(Ls8/h;Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/g;->a:Ls8/h;

    iput-object p2, p0, Ls8/g;->b:Lcom/miui/dock/sidebar/j;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Ls8/g;->a:Ls8/h;

    iget-object v1, p0, Ls8/g;->b:Lcom/miui/dock/sidebar/j;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Ls8/h;->c(Ls8/h;Lcom/miui/dock/sidebar/j;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
