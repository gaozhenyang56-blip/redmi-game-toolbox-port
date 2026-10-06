.class public final synthetic Ljc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljc/a;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Ljc/a;->a:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-static {v0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->d0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;)V

    return-void
.end method
