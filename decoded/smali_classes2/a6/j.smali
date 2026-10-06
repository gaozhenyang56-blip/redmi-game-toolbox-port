.class public final synthetic La6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:La6/l;

.field public final synthetic b:Lc6/h;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(La6/l;Lc6/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/j;->a:La6/l;

    iput-object p2, p0, La6/j;->b:Lc6/h;

    iput p3, p0, La6/j;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, La6/j;->a:La6/l;

    iget-object v1, p0, La6/j;->b:Lc6/h;

    iget v2, p0, La6/j;->c:I

    invoke-static {v0, v1, v2, p1}, La6/l;->f(La6/l;Lc6/h;ILandroid/view/View;)V

    return-void
.end method
