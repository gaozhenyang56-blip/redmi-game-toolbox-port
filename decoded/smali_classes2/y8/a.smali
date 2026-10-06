.class public final synthetic Ly8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ly8/d;

.field public final synthetic b:Lb9/a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ly8/d;Lb9/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/a;->a:Ly8/d;

    iput-object p2, p0, Ly8/a;->b:Lb9/a;

    iput p3, p0, Ly8/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ly8/a;->a:Ly8/d;

    iget-object v1, p0, Ly8/a;->b:Lb9/a;

    iget v2, p0, Ly8/a;->c:I

    invoke-static {v0, v1, v2, p1}, Ly8/d;->c(Ly8/d;Lb9/a;ILandroid/view/View;)V

    return-void
.end method
