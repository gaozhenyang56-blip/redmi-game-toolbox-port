.class public final synthetic Lh8/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lh8/m;

.field public final synthetic b:Lh8/b$a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lh8/m;Lh8/b$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh8/l;->a:Lh8/m;

    iput-object p2, p0, Lh8/l;->b:Lh8/b$a;

    iput p3, p0, Lh8/l;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lh8/l;->a:Lh8/m;

    iget-object v1, p0, Lh8/l;->b:Lh8/b$a;

    iget v2, p0, Lh8/l;->c:I

    invoke-static {v0, v1, v2, p1}, Lh8/m;->t(Lh8/m;Lh8/b$a;ILandroid/view/View;)V

    return-void
.end method
