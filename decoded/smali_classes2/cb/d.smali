.class public final synthetic Lcb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcb/e;


# direct methods
.method public synthetic constructor <init>(Lcb/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb/d;->a:Lcb/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcb/d;->a:Lcb/e;

    invoke-static {v0}, Lcb/e;->a(Lcb/e;)V

    return-void
.end method
