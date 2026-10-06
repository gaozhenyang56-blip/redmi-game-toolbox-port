.class public final synthetic Lp7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lp7/h$a;


# direct methods
.method public synthetic constructor <init>(Lp7/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp7/g;->a:Lp7/h$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lp7/g;->a:Lp7/h$a;

    invoke-static {v0}, Lp7/h$a;->a(Lp7/h$a;)V

    return-void
.end method
