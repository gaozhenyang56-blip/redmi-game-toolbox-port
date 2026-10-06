.class public final synthetic Lk3/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/miui/apppredict/activity/FolderSearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/a0;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lk3/a0;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {v0, p1, p2}, Lcom/miui/apppredict/activity/FolderSearchActivity;->e0(Lcom/miui/apppredict/activity/FolderSearchActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
