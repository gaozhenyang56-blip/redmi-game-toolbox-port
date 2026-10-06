.class public Le3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "key_has_app_update"

    invoke-static {v0}, Lam/a;->f(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Le3/e;->a:Landroid/net/Uri;

    return-void
.end method
