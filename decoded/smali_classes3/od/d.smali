.class public final synthetic Lod/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lod/e;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lod/e;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/d;->a:Lod/e;

    iput-object p2, p0, Lod/d;->b:Landroid/content/Context;

    iput p3, p0, Lod/d;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lod/d;->a:Lod/e;

    iget-object v1, p0, Lod/d;->b:Landroid/content/Context;

    iget v2, p0, Lod/d;->c:I

    invoke-static {v0, v1, v2}, Lod/e;->e(Lod/e;Landroid/content/Context;I)V

    return-void
.end method
