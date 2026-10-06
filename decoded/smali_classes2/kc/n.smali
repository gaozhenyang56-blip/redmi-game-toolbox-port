.class public final synthetic Lkc/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkc/q;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkc/q;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/n;->a:Lkc/q;

    iput-object p2, p0, Lkc/n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lkc/n;->a:Lkc/q;

    iget-object v1, p0, Lkc/n;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkc/q;->c(Lkc/q;Ljava/lang/String;)V

    return-void
.end method
