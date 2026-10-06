.class public final synthetic Ll4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field public final synthetic a:Ll4/h;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ll4/h;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll4/g;->a:Ll4/h;

    iput-object p2, p0, Ll4/g;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    iget-object v0, p0, Ll4/g;->a:Ll4/h;

    iget-object v1, p0, Ll4/g;->b:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Ll4/h;->d(Ll4/h;Landroid/content/Context;Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method
