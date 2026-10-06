.class public final synthetic Lc9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc9/d$a;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lc9/d$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc9/b;->a:Lc9/d$a;

    iput-object p2, p0, Lc9/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc9/b;->a:Lc9/d$a;

    iget-object v1, p0, Lc9/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lc9/d$a;->c(Lc9/d$a;Ljava/lang/String;)V

    return-void
.end method
