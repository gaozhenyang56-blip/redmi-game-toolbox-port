.class public final synthetic Lt5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lt5/i;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lt5/i;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/e;->a:Lt5/i;

    iput p2, p0, Lt5/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lt5/e;->a:Lt5/i;

    iget v1, p0, Lt5/e;->b:I

    invoke-static {v0, v1}, Lt5/i;->e(Lt5/i;I)V

    return-void
.end method
