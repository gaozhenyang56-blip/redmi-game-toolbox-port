.class public final synthetic Lmc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc/c;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmc/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lmc/b;->a:Landroid/content/Context;

    check-cast p3, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2, p3}, Lmc/c;->b(Landroid/content/Context;JLandroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method
