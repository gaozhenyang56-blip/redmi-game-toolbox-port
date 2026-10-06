.class public final synthetic Lk7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lk7/f;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lk7/f$b;


# direct methods
.method public synthetic constructor <init>(Lk7/f;Ljava/lang/String;Lk7/f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk7/b;->a:Lk7/f;

    iput-object p2, p0, Lk7/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lk7/b;->c:Lk7/f$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk7/b;->a:Lk7/f;

    iget-object v1, p0, Lk7/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lk7/b;->c:Lk7/f$b;

    invoke-static {v0, v1, v2}, Lk7/f;->e(Lk7/f;Ljava/lang/String;Lk7/f$b;)V

    return-void
.end method
