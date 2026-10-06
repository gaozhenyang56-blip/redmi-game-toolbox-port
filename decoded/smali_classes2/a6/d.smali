.class public final synthetic La6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:La6/e;

.field public final synthetic b:Lc6/d;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(La6/e;Lc6/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/d;->a:La6/e;

    iput-object p2, p0, La6/d;->b:Lc6/d;

    iput p3, p0, La6/d;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, La6/d;->a:La6/e;

    iget-object v1, p0, La6/d;->b:Lc6/d;

    iget v2, p0, La6/d;->c:I

    invoke-static {v0, v1, v2, p1}, La6/e;->f(La6/e;Lc6/d;ILandroid/view/View;)V

    return-void
.end method
