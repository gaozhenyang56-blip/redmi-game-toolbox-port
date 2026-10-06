.class public final synthetic Lk7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk7/f;

.field public final synthetic b:Lk7/f$b;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lk7/f;Lk7/f$b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/a;->a:Lk7/f;

    iput-object p2, p0, Lk7/a;->b:Lk7/f$b;

    iput-boolean p3, p0, Lk7/a;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk7/a;->a:Lk7/f;

    iget-object v1, p0, Lk7/a;->b:Lk7/f$b;

    iget-boolean v2, p0, Lk7/a;->c:Z

    invoke-static {v0, v1, v2}, Lk7/f;->c(Lk7/f;Lk7/f$b;Z)V

    return-void
.end method
