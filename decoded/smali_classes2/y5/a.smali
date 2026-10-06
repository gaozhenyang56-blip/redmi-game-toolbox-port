.class public final synthetic Ly5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ly5/c;

.field public final synthetic b:Lh8/h;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ly5/c;Lh8/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly5/a;->a:Ly5/c;

    iput-object p2, p0, Ly5/a;->b:Lh8/h;

    iput p3, p0, Ly5/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ly5/a;->a:Ly5/c;

    iget-object v1, p0, Ly5/a;->b:Lh8/h;

    iget v2, p0, Ly5/a;->c:I

    invoke-static {v0, v1, v2, p1}, Ly5/c;->l(Ly5/c;Lh8/h;ILandroid/view/View;)V

    return-void
.end method
