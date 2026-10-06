.class Lcom/miui/powercenter/bootshutdown/RepeatPreference$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/bootshutdown/RepeatPreference;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

.field final synthetic b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference;Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$b;->b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    iput-object p2, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$b;->a:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$b;->b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->g(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$b;->a:Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->i(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$b;->b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->h(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V

    return-void
.end method
