.class public final synthetic Lsd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsd/f;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lsd/f;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsd/e;->a:Lsd/f;

    iput-object p2, p0, Lsd/e;->b:Landroid/content/Context;

    iput p3, p0, Lsd/e;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lsd/e;->a:Lsd/f;

    iget-object v1, p0, Lsd/e;->b:Landroid/content/Context;

    iget v2, p0, Lsd/e;->c:I

    invoke-static {v0, v1, v2}, Lsd/f;->a(Lsd/f;Landroid/content/Context;I)V

    return-void
.end method
