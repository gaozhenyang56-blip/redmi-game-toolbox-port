.class public final synthetic Lmk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llk/y0;


# instance fields
.field public final synthetic a:Lmk/d;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lmk/d;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmk/c;->a:Lmk/d;

    iput-object p2, p0, Lmk/c;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lmk/c;->a:Lmk/d;

    iget-object v1, p0, Lmk/c;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lmk/d;->a0(Lmk/d;Ljava/lang/Runnable;)V

    return-void
.end method
