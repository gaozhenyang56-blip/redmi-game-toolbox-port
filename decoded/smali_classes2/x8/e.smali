.class public final synthetic Lx8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lq6/i;

.field public final synthetic b:Lb9/e$a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lq6/i;Lb9/e$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx8/e;->a:Lq6/i;

    iput-object p2, p0, Lx8/e;->b:Lb9/e$a;

    iput p3, p0, Lx8/e;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lx8/e;->a:Lq6/i;

    iget-object v1, p0, Lx8/e;->b:Lb9/e$a;

    iget v2, p0, Lx8/e;->c:I

    invoke-static {v0, v1, v2, p1}, Lx8/f;->j(Lq6/i;Lb9/e$a;ILandroid/view/View;)V

    return-void
.end method
