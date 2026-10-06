.class public final synthetic Lcom/miui/permcenter/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lak/l;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/m;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/miui/permcenter/m;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/m;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/permcenter/m;->b:Z

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1, p1}, Lcom/miui/permcenter/n;->a(Landroid/content/Context;ZLandroid/content/pm/PackageInfo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
