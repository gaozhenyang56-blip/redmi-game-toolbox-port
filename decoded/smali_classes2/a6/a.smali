.class public final synthetic La6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:La6/c;

.field public final synthetic b:Lc6/h;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(La6/c;Lc6/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6/a;->a:La6/c;

    iput-object p2, p0, La6/a;->b:Lc6/h;

    iput p3, p0, La6/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, La6/a;->a:La6/c;

    iget-object v1, p0, La6/a;->b:Lc6/h;

    iget v2, p0, La6/a;->c:I

    invoke-static {v0, v1, v2, p1}, La6/c;->g(La6/c;Lc6/h;ILandroid/view/View;)V

    return-void
.end method
