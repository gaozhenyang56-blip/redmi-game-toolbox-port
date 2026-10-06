.class Lcom/miui/permcenter/permissions/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/b;->m(Lcom/miui/permcenter/permissions/b$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/permcenter/AppPermissionInfo;

.field final synthetic c:Lcom/miui/permcenter/permissions/b;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/b;ILcom/miui/permcenter/AppPermissionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/b$a;->c:Lcom/miui/permcenter/permissions/b;

    iput p2, p0, Lcom/miui/permcenter/permissions/b$a;->a:I

    iput-object p3, p0, Lcom/miui/permcenter/permissions/b$a;->b:Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/permissions/b$a;->c:Lcom/miui/permcenter/permissions/b;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/b;->l(Lcom/miui/permcenter/permissions/b;)Lcom/miui/permcenter/permissions/b$c;

    move-result-object v0

    iget v1, p0, Lcom/miui/permcenter/permissions/b$a;->a:I

    iget-object v2, p0, Lcom/miui/permcenter/permissions/b$a;->b:Lcom/miui/permcenter/AppPermissionInfo;

    invoke-interface {v0, v1, p1, v2}, Lcom/miui/permcenter/permissions/b$c;->D(ILandroid/view/View;Lcom/miui/permcenter/AppPermissionInfo;)V

    return-void
.end method
