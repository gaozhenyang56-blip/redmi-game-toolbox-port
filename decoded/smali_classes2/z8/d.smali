.class public final synthetic Lz8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lz8/f;

.field public final synthetic b:Lb9/c;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lz8/f;Lb9/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/d;->a:Lz8/f;

    iput-object p2, p0, Lz8/d;->b:Lb9/c;

    iput p3, p0, Lz8/d;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lz8/d;->a:Lz8/f;

    iget-object v1, p0, Lz8/d;->b:Lb9/c;

    iget v2, p0, Lz8/d;->c:I

    invoke-static {v0, v1, v2, p1}, Lz8/f;->k(Lz8/f;Lb9/c;ILandroid/view/View;)V

    return-void
.end method
